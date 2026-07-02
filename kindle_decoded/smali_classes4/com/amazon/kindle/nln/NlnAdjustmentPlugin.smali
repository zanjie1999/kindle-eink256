.class public Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;
.super Ljava/lang/Object;
.source "NlnAdjustmentPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->debug:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "NlnAdjustmentPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# static fields
.field private static final ENABLED:Z = false

.field public static addLabels:Z = false

.field public static breadcrumbPageOffset:I = 0x0

.field public static breadcrumbScale:F = 1.0f

.field public static doBreadcrumbFade:Z = true

.field public static enableTransitionAnimation:Z = true

.field public static lutzCoefficient:F = 5.0f

.field public static maxJumpDuration:J = 0x1f4L

.field public static pageOnscreenCutoff:F = 0.6f

.field public static shouldShowWaypointBreadcrumb:Z = true

.field public static transitionDurationScale:F = 1.0f

.field public static useLutzInterpolator:Z = true


# instance fields
.field private button:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field

.field private provider:Lcom/amazon/kindle/krx/providers/IProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin$1;-><init>(Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->provider:Lcom/amazon/kindle/krx/providers/IProvider;

    .line 107
    new-instance v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin$2;-><init>(Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->button:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->button:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    return-object p0
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    return-void
.end method
