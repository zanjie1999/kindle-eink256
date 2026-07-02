.class public Lcom/amazon/identity/auth/device/lu;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final uv:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lu;->uv:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    return-void
.end method


# virtual methods
.method public ix()Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lu;->uv:Lcom/amazon/identity/kcpsdk/common/KindleWebserviceErrorType;

    return-object v0
.end method
