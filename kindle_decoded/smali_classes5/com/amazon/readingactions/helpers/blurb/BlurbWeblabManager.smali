.class public final Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager;
.super Ljava/lang/Object;
.source "BlurbWeblabManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;
    }
.end annotation


# static fields
.field private static final BLURB_CARD_END_ACTION_EXPERIMENT_WEBLAB:Ljava/lang/String; = "BDC_EA_BLURB_CARD_ANDROID_364410"

.field private static final BLURB_CARD_END_ACTION_GATING_WEBLAB:Ljava/lang/String; = "BDC_EA_BLURB_CARD_ANDROID_GATING_364418"

.field private static final C_TREATMENT:Ljava/lang/String; = "C"

.field public static final Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;

.field private static final T1_TREATMENT:Ljava/lang/String; = "T1"

.field private static final T2_TREATMENT:Ljava/lang/String; = "T2"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager;->Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;

    return-void
.end method

.method public static final isBlurbCardAvailableAndEnabled()Z
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager;->Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;->isBlurbCardAvailableAndEnabled()Z

    move-result v0

    return v0
.end method
