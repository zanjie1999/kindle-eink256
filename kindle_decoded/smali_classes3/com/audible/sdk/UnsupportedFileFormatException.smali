.class public Lcom/audible/sdk/UnsupportedFileFormatException;
.super Ljava/lang/Exception;
.source "UnsupportedFileFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Unsupported file format"

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/audible/sdk/UnsupportedFileFormatException;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getfileName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/audible/sdk/UnsupportedFileFormatException;->fileName:Ljava/lang/String;

    return-object v0
.end method
