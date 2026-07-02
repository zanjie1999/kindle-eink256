.class public Lcom/amazon/android/webkit/AmazonWebResourceResponse;
.super Ljava/lang/Object;
.source "AmazonWebResourceResponse.java"


# instance fields
.field private data:Ljava/io/InputStream;

.field private encoding:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->data:Ljava/io/InputStream;

    .line 25
    iput-object p2, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->encoding:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->data:Ljava/io/InputStream;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->mimeType:Ljava/lang/String;

    return-void
.end method
