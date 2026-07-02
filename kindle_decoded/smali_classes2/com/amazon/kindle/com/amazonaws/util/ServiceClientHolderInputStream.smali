.class public Lcom/amazon/kindle/com/amazonaws/util/ServiceClientHolderInputStream;
.super Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;
.source "ServiceClientHolderInputStream.java"


# instance fields
.field private client:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/util/ServiceClientHolderInputStream;->client:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceClient;

    return-void
.end method
