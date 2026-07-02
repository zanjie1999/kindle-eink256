.class public final Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;
.super Ljava/lang/Object;
.source "AaSettingUpdateManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingUpdateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingUpdateManager.kt\ncom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1586#2,2:43\n*E\n*S KotlinDebug\n*F\n+ 1 AaSettingUpdateManager.kt\ncom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager\n*L\n40#1,2:43\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;

.field private static final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->INSTANCE:Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->listeners:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deregisterListener(Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 2

    const-string v0, "updatedSetting"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->listeners:Ljava/util/Set;

    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;

    .line 40
    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;->refreshSettings(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final registerListener(Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
