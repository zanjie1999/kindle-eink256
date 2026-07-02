.class final Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BlurbCardHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;->checkAndFilterLayoutModelForBlurbCardExperiment(Lcom/amazon/ea/model/layout/LayoutModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/ea/model/widget/WidgetModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;

    invoke-direct {v0}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;-><init>()V

    sput-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;->INSTANCE:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/amazon/ea/model/widget/WidgetModel;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;->invoke(Lcom/amazon/ea/model/widget/WidgetModel;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/amazon/ea/model/widget/WidgetModel;)Z
    .locals 2

    .line 34
    iget-object v0, p1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const-string v1, "editorsPickBookGridWidget"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const-string v0, "editorsPickBlurbCardWidget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
