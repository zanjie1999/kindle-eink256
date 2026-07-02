.class public Lcom/amazon/kcp/store/KCPJSBridge$Builder;
.super Ljava/lang/Object;
.source "KCPJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/KCPJSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Lcom/amazon/kcp/store/KCPJSBridge;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/KCPJSBridge$Builder;->tag:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

    invoke-direct {v0}, Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/KCPJSBridge$Builder;->exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/kcp/store/KCPJSBridge;
    .locals 4

    .line 61
    new-instance v0, Lcom/amazon/kcp/store/KCPJSBridge;

    iget-object v1, p0, Lcom/amazon/kcp/store/KCPJSBridge$Builder;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/store/KCPJSBridge$Builder;->exceptionHandler:Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/store/KCPJSBridge;-><init>(Ljava/lang/String;Lcom/amazon/kcp/store/javascript/KCPJSBridgeExceptionHandler;Lcom/amazon/kcp/store/KCPJSBridge$1;)V

    return-object v0
.end method

.method public setTag(Ljava/lang/String;)Lcom/amazon/kcp/store/KCPJSBridge$Builder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/store/KCPJSBridge$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
