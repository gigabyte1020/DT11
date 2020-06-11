from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from phonenumber_field.formfields import PhoneNumberField


class SignUpForm(UserCreationForm):
    username=forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    first_name=forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    last_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    email=forms.EmailField(widget=forms.EmailInput(attrs={'class': 'form-control'}))
    birth_date = forms.DateField(widget=forms.DateInput(attrs={'class': 'form-control'}))
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    role = forms.CharField(widget=forms.HiddenInput(attrs={'class': 'form-control','value':'user',}))

    class Meta:
        model = User
        fields = ('username','first_name','last_name', 'birth_date', 'email', 'password1', 'password2')


class SellSignForm(UserCreationForm):
    username=forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    first_name=forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    # last_name = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    pno = PhoneNumberField(widget=forms.NumberInput(attrs={'class': 'form-control'}))
    email=forms.EmailField(widget=forms.EmailInput(attrs={'class': 'form-control'}))
    location = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    role = forms.CharField(widget=forms.HiddenInput(attrs={'class': 'form-control','value':'user',}))

    class Meta:
        model = User
        fields = ('username','first_name', 'pno', 'email','location', 'password1', 'password2')

class UpdateProfile(forms.ModelForm):
    username = forms.CharField(required=True)
    email = forms.EmailField(required=True)
    first_name = forms.CharField(required=False)
    last_name = forms.CharField(required=False)

    class Meta:
        model = User
        fields = ('username', 'email', 'first_name', 'last_name')

    def clean_email(self):
        username = self.cleaned_data.get('username')
        email = self.cleaned_data.get('email')

        if email and User.objects.filter(email=email).exclude(username=username).count():
            raise forms.ValidationError('This email address is already in use. Please supply a different email address.')
        return email

    def save(self, commit=True):
        user = super(UpdateProfile, self).save(commit=False)
        user.email = self.cleaned_data['email']

        if commit:
            user.save()

        return user
