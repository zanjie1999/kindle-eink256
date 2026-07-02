.class public final Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;
.super Ljava/lang/Object;
.source "GoodReadsShelfModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSUPPORTED_DISPLAY_FORMATS$p(Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;)Ljava/util/HashSet;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel$Companion;->getSUPPORTED_DISPLAY_FORMATS()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private final getSUPPORTED_DISPLAY_FORMATS()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;->access$getSUPPORTED_DISPLAY_FORMATS$cp()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
