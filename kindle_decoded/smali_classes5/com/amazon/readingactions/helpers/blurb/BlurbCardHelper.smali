.class public final Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper;
.super Ljava/lang/Object;
.source "BlurbCardHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;
    }
.end annotation


# static fields
.field private static final BLURB_END_ACTION_T1_TREATMENT_WIDGET_ID:Ljava/lang/String; = "editorsPickBookGridWidget"

.field private static final BLURB_END_ACTION_T2_TREATMENT_WIDGET_ID:Ljava/lang/String; = "editorsPickBlurbCardWidget"

.field public static final Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;

.field private static final T1_TREATMENT:Ljava/lang/String; = "T1"

.field private static final T2_TREATMENT:Ljava/lang/String; = "T2"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper;->Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;

    return-void
.end method

.method public static final checkAndFilterLayoutModelForBlurbCardExperiment(Lcom/amazon/ea/model/layout/LayoutModel;)V
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper;->Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;->checkAndFilterLayoutModelForBlurbCardExperiment(Lcom/amazon/ea/model/layout/LayoutModel;)V

    return-void
.end method

.method public static final isBlurbCardWidget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper;->Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;->isBlurbCardWidget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
