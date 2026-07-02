.class public Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;
.super Ljava/lang/Object;
.source "KindleWebserviceError.java"


# instance fields
.field private final mErrorType:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    return-object v0
.end method
