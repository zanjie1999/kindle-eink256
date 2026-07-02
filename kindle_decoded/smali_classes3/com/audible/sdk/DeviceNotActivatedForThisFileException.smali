.class public Lcom/audible/sdk/DeviceNotActivatedForThisFileException;
.super Ljava/lang/Exception;
.source "DeviceNotActivatedForThisFileException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final file:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DeviceNotActivatedForThisFileException: Device not activated"

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/audible/sdk/DeviceNotActivatedForThisFileException;->file:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/audible/sdk/DeviceNotActivatedForThisFileException;->file:Ljava/lang/String;

    return-object v0
.end method
