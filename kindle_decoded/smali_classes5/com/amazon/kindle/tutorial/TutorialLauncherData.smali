.class public final Lcom/amazon/kindle/tutorial/TutorialLauncherData;
.super Ljava/lang/Object;
.source "TutorialLauncherData.kt"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final config:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

.field private final customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

.field private final customTutorialHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/tutorial/model/TutorialConfig;Landroid/app/Activity;Ljava/util/Map;Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/tutorial/model/TutorialConfig;",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;",
            ">;",
            "Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTutorialHandlerMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTutorialCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->config:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialHandlerMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/tutorial/TutorialLauncherData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/tutorial/TutorialLauncherData;

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->config:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    iget-object v1, p1, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->config:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->activity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialHandlerMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialHandlerMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    iget-object p1, p1, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getConfig()Lcom/amazon/kindle/tutorial/model/TutorialConfig;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->config:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    return-object v0
.end method

.method public final getCustomTutorialCallback()Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    return-object v0
.end method

.method public final getCustomTutorialHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->config:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialHandlerMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TutorialLauncherData(config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->config:Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customTutorialHandlerMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialHandlerMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customTutorialCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/TutorialLauncherData;->customTutorialCallback:Lcom/amazon/kindle/tutorial/CustomTutorialStateCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
