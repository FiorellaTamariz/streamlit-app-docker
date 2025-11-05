import streamlit as st

# Leer el archivo de texto
with open("archivo.txt", "r") as file:
    contenido = file.read()

# Mostrar el contenido en la aplicación Streamlit
st.text_area("Contenido del archivo", contenido, height=300)
