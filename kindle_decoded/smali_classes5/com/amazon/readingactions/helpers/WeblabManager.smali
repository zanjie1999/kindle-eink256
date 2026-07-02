.class public final Lcom/amazon/readingactions/helpers/WeblabManager;
.super Ljava/lang/Object;
.source "WeblabManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/helpers/WeblabManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    .line 43
    const-class v0, Lcom/amazon/readingactions/helpers/WeblabManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final isGRAutoshelfEnabledInSABSE(Z)Z
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->isGRAutoshelfEnabledInSABSE(Z)Z

    move-result p0

    return p0
.end method

.method public static final shouldSAAuthorBioWidgetBeFirstWidget()Z
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->shouldSAAuthorBioWidgetBeFirstWidget()Z

    move-result v0

    return v0
.end method

.method public static final shouldSABSEExpandFirstBookInExperiment()Z
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->shouldSABSEExpandFirstBookInExperiment()Z

    move-result v0

    return v0
.end method

.method public static final shouldSABSETitleIncludeTTR()Z
    .locals 4

    sget-object v0, Lcom/amazon/readingactions/helpers/WeblabManager;->Companion:Lcom/amazon/readingactions/helpers/WeblabManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/readingactions/helpers/WeblabManager$Companion;->shouldSABSETitleIncludeTTR$default(Lcom/amazon/readingactions/helpers/WeblabManager$Companion;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
