.class public final Lcom/amazon/kcp/helpandfeedback/WebViewState$Initialize;
.super Lcom/amazon/kcp/helpandfeedback/WebViewState;
.source "HelpWebErrorHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/WebViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initialize"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/WebViewState$Initialize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/WebViewState$Initialize;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/WebViewState$Initialize;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/WebViewState$Initialize;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/WebViewState$Initialize;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/amazon/kcp/helpandfeedback/WebViewState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
