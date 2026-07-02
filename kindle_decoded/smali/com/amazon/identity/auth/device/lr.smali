.class public Lcom/amazon/identity/auth/device/lr;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private uu:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lr;->uu:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    return-void
.end method


# virtual methods
.method public iw()Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lr;->uu:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    return-object v0
.end method
