.class public Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;
.super Ljava/lang/Object;
.source "DoubletimeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static utils:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->utils:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;

    .line 12
    const-class v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->utils:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;

    return-object v0
.end method


# virtual methods
.method public allowsSharing()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->allowsSharing()Z

    move-result v0

    return v0
.end method

.method public setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
