.class public Lcom/amazon/messaging/odot/webservices/transportdto/FIRSError;
.super Ljava/lang/Object;
.source "FIRSError.java"


# instance fields
.field private mErrorType:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSError;->mErrorType:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSError;->mErrorType:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    return-object v0
.end method
