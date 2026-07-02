.class public Lcom/amazon/kindle/pagecurl/opengles20/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Shader"


# instance fields
.field fShaderSource:Ljava/lang/String;

.field fragmentShader:I

.field program:I

.field vShaderSource:Ljava/lang/String;

.field vertexShader:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .locals 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 38
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "\n"

    if-eqz p1, :cond_0

    .line 42
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 48
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    invoke-direct {p3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_1

    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not read shader: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->vShaderSource:Ljava/lang/String;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->fShaderSource:Ljava/lang/String;

    return-void
.end method

.method private createShader(ILjava/lang/String;)I
    .locals 0

    .line 86
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 89
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    :cond_0
    return p1
.end method


# virtual methods
.method public createProgram()V
    .locals 3

    .line 66
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->program:I

    if-eqz v0, :cond_0

    const v0, 0x8b31

    .line 68
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->vShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->createShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->vertexShader:I

    const v0, 0x8b30

    .line 69
    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->fShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->createShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->fragmentShader:I

    .line 71
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->program:I

    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->vertexShader:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v0, "glAttachShader"

    .line 72
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 74
    iget v1, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->program:I

    iget v2, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->fragmentShader:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 75
    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/opengles20/GlErrorChecker;->checkGlError(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    goto :goto_0

    .line 79
    :cond_0
    sget-object v0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t create program."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getProgram()I
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->createProgram()V

    .line 97
    iget v0, p0, Lcom/amazon/kindle/pagecurl/opengles20/Shader;->program:I

    return v0
.end method
