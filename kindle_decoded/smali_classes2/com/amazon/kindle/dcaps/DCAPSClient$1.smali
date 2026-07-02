.class Lcom/amazon/kindle/dcaps/DCAPSClient$1;
.super Ljava/lang/Object;
.source "DCAPSClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/dcaps/DCAPSClient;->registerCapabilities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/dcaps/DCAPSClient;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 107
    invoke-static {}, Lcom/amazon/kindle/dcaps/registration/RegistrationRequest;->register()V

    return-void
.end method
