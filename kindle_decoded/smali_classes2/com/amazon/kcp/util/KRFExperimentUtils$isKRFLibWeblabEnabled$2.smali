.class final Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KRFExperimentUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/KRFExperimentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;

    invoke-direct {v0}, Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;->INSTANCE:Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/kcp/util/KRFExperimentUtils$isKRFLibWeblabEnabled$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 3

    .line 15
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "KRF_LOAD_LIBS_375268"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->recordTriggerAndCheckIsOn()Z

    move-result v0

    return v0
.end method
