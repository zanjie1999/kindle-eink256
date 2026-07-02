.class public Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;
.super Ljava/lang/Object;
.source "FIRSError.java"


# instance fields
.field private mErrorType:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    return-object v0
.end method
