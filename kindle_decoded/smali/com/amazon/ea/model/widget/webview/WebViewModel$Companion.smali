.class public final Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;
.super Ljava/lang/Object;
.source "WebViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/model/widget/webview/WebViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSUPPORTED_DISPLAY_FORMATS$p(Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;)Ljava/util/HashSet;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/ea/model/widget/webview/WebViewModel$Companion;->getSUPPORTED_DISPLAY_FORMATS()Ljava/util/HashSet;

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

    .line 19
    invoke-static {}, Lcom/amazon/ea/model/widget/webview/WebViewModel;->access$getSUPPORTED_DISPLAY_FORMATS$cp()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method
