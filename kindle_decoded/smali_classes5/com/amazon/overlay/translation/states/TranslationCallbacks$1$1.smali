.class Lcom/amazon/overlay/translation/states/TranslationCallbacks$1$1;
.super Ljava/lang/Object;
.source "TranslationCallbacks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;->showPromptWANWarning(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/states/TranslationCallbacks$1;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "SupressSpeakTranslation"

    .line 93
    invoke-static {p2}, Lcom/amazon/kcp/translation/TMetric;->reportMetric(Ljava/lang/String;)V

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
