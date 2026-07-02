.class public final Lcom/amazon/ea/model/widget/webview/WebViewModel;
.super Lcom/amazon/ea/model/widget/WidgetModel;
.source "WebViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;

.field private static final SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final payload:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/ea/model/widget/webview/WebViewModel;->Companion:Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 19
    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/widget/webview/WebViewModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "metricsTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/model/widget/WidgetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/ea/model/widget/webview/WebViewModel;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/ea/model/widget/webview/WebViewModel;->payload:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getSUPPORTED_DISPLAY_FORMATS$cp()Ljava/util/HashSet;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/ea/model/widget/webview/WebViewModel;->SUPPORTED_DISPLAY_FORMATS:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/ea/model/widget/webview/WebViewModel;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/ea/model/widget/webview/WebViewModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public supports(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "formats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/amazon/ea/model/widget/webview/WebViewModel;->Companion:Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;

    invoke-static {v0}, Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;->access$getSUPPORTED_DISPLAY_FORMATS$p(Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
