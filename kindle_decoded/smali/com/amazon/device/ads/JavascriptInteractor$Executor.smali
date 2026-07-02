.class public Lcom/amazon/device/ads/JavascriptInteractor$Executor;
.super Ljava/lang/Object;
.source "JavascriptInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/JavascriptInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Executor"
.end annotation


# instance fields
.field private final interactor:Lcom/amazon/device/ads/JavascriptInteractor;

.field private proguardKeeper:Z


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/JavascriptInteractor;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->proguardKeeper:Z

    .line 135
    iput-object p1, p0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->interactor:Lcom/amazon/device/ads/JavascriptInteractor;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 138
    invoke-virtual {p0, p1, p1}, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/amazon/device/ads/JavascriptInteractor$Executor;->interactor:Lcom/amazon/device/ads/JavascriptInteractor;

    invoke-static {v0, p1, p2}, Lcom/amazon/device/ads/JavascriptInteractor;->access$000(Lcom/amazon/device/ads/JavascriptInteractor;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
