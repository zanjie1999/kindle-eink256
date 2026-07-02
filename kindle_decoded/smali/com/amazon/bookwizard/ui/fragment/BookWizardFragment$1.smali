.class Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment$1;
.super Ljava/lang/Object;
.source "BookWizardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->onDataChanged(Lcom/amazon/bookwizard/data/DataProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment$1;->this$0:Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment$1;->this$0:Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/fragment/BookWizardFragment;->updateUI()V

    return-void
.end method
