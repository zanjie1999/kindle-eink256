.class public Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory;
.super Ljava/lang/Object;
.source "EndActionsLayoutFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;

    return-void
.end method

.method public static final create(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory$Companion;->create(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object p0

    return-object p0
.end method
