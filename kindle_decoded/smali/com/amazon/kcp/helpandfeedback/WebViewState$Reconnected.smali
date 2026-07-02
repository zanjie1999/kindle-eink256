.class public final Lcom/amazon/kcp/helpandfeedback/WebViewState$Reconnected;
.super Lcom/amazon/kcp/helpandfeedback/WebViewState;
.source "HelpWebErrorHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/WebViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reconnected"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/helpandfeedback/WebViewState$Reconnected;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kcp/helpandfeedback/WebViewState$Reconnected;

    invoke-direct {v0}, Lcom/amazon/kcp/helpandfeedback/WebViewState$Reconnected;-><init>()V

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/WebViewState$Reconnected;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/WebViewState$Reconnected;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/amazon/kcp/helpandfeedback/WebViewState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
