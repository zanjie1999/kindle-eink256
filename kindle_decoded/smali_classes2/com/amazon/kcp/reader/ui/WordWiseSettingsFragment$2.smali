.class Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$2;
.super Ljava/lang/Object;
.source "WordWiseSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->onLanguageItemClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$2;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 328
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->resyncDictionary()V

    return-void
.end method
