# Automação de testes Mobile com Robot Framework e Appium.

<h1 align="center">
    <img alt="NuClone" title="Robot" src=".github/splash.png" width="100%" />
</h1>

## 👨‍💻 Pré-requisitos de ambiente

Você vai precisar instalar as seguintes ferramentas e tecnologias:

- [Java JDK8](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html) 8.202
- [Android Studio](https://developer.android.com/studio/index.html?hl=pt-br) 
- [Python](https://www.python.org/downloads/) 3.11.4
- [Node.js](https://nodejs.org/en/) 18.17.1
- [Appium](http://appium.io/downloads.html) >=2.1.3
- [Robot Framework](https://robotframework.org/) >=2

## 💻 Ferramentas

### Você pode baixar e instalar o JDK 8 através [desse link](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html).

### Android Studio é a IDE oficial para desenvolvimento e testes de aplicativos para Android
- Você pode baixar a ultima através [desse link](https://developer.android.com/studio/index.html?hl=pt-br)

## 🔖 Variáveis de ambiente

### Necessário configurar o **`ANDROID_HOME`** e **`JAVA_HOME`** no **`PATH`** do S.O.

### Pelo ***Virtual Device Manager*** do ***Android Studio***, crie um device.

### No Linux ou Mac

Configure as seguintes váriávies de ambiente no **bash_profile** ou **zshrc** do seu Linux ou Mac:

```bash
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export ANDROID_HOME=~/Library/Android/sdk

PATH=$PATH:$ANDROID_HOME/platform-tools
PATH=$PATH:$ANDROID_HOME/tools
PATH=$PATH:$ANDROID_HOME/tools/bin
PATH=$PATH:$ANDROID_HOME/tools/lib
PATH=$PATH:$JAVA_HOME/bin
```

Para ZSH, execute o comando:

```bash
source ~/.zshrc
```

Para Bash, execute o comando:

```bash
source ~/.bashrc
```

### No Windows

[![Audi R8](.github/windows.png)](https://youtu.be/ZsOq4xoTid0 "Variáveis de ambiente no Windows")

### **Capabilities** configuradas no projeto de testes:

- Existe um arquivo já configurado na pasta no projeto, capabilitie, mas se precisar copiar daqui, fiquem avontade.

```
{
  "platformName": "Android",
  "deviceName": "Android Emulator",
  "automationName": "UIAutomator2",
  "app": "<caminho-do-projeto>/apks/app-curso.apk",
  "udid": "<emulador instalado no seu PC>",
  "autoGrantPermissions": true
}
```


## Passo a passo para executar o projeto ✅ ✅

### Sugiro o uso de algum ambiente virtual (virtualenv) para isolar as bibliotecas utilizadas aqui, mas não tem problemas iniciar o projeto sem um ambiente virtual. Mais sobre [ambientes virtuais aqui](https://realpython.com/lessons/creating-virtual-environment/).

<ul>
    <li>
        Clonar o projeto:
        ```
        git clone https://github.com/clarabez/appium-robot.git
        ```
    </li>
    <li>
        - Existe um arquivo package.json já preparado pra instalar o appium e uiautomator2 para facilitar o uso da ferramenta. 
    </li>
</ul>





## 📱Appium 

- Com o Node.js instalado, execute:

  | Se estiver no Windows, execute no Prompt como Administrador

```bash
npm install -g appium
npm install -g appium-doctor
```

- Em seguida, execute:

```bash
appium-doctor --android
```

- Deve aprensentar um resultado similar ao da imagem abaixo:

<h1 align="left">
    <img alt="QAninja Academy" src=".github/doctor.png" width="100%" />
</h1>

## 📱Appium Desktop

Instale o Appium Desktop Latest release (não faça download do Pre-release)


## 🤔 Executar

- Abra o Appium Desktop e clique em Start Server;
- Acesse a pasta do projeto;
- Instale o Robot e a Lib do Appium conforme descrito na [doc](https://robotframework.org/);
- Execute o comando: `robot -d ./logs tests'`;
- Enjoy.

---

Made with ❤️ by [Marcos Pereira](https://github.com/MarcosPereira1).
