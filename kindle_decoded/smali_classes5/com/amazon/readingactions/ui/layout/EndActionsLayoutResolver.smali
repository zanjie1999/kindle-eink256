.class public Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver;
.super Ljava/lang/Object;
.source "EndActionsLayoutResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;

    .line 43
    const-class v0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver;->TAG:Ljava/lang/String;

    return-object v0
.end method
