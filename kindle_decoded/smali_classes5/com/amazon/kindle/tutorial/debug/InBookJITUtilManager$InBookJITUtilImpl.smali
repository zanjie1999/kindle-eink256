.class public final Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;
.super Ljava/lang/Object;
.source "InBookJITUtilManager.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/debug/InBookJITUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InBookJITUtilImpl"
.end annotation


# instance fields
.field private final TREATMENT_T1:Ljava/lang/String;

.field private enableCache:Z

.field private shouldRemoveJIT:Z

.field private weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    const-string p1, "T1"

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->TREATMENT_T1:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 23
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)V

    return-void
.end method

.method private final isWeblabEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "BOOKS_KINDLE_ANDROID_INBOOK_JIT_346986"

    .line 45
    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 46
    invoke-interface {v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 47
    :goto_1
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->TREATMENT_T1:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BOOKS_KINDLE_ANDROID_INBOOK_JIT_CHILD_346977"

    .line 48
    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 49
    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->TREATMENT_T1:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 54
    :goto_2
    sget-object v0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->INSTANCE:Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;->access$getTAG$p(Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InBook JIT weblab is enabled:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return p1
.end method


# virtual methods
.method public shouldRemoveInBookJIT()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->enableCache:Z

    if-eqz v0, :cond_0

    .line 35
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->shouldRemoveJIT:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->enableCache:Z

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->isWeblabEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/tutorial/debug/InBookJITUtilManager$InBookJITUtilImpl;->shouldRemoveJIT:Z

    return v0
.end method
