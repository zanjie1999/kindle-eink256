.class public Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;
.super Ljava/lang/Exception;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerErrorException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mResponseCode:I

.field private mResponseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Request failed with response code= %d, message= %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;->mResponseCode:I

    .line 24
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;->mResponseMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;->mResponseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/HttpHelper$ServerErrorException;->mResponseMessage:Ljava/lang/String;

    return-object v0
.end method
