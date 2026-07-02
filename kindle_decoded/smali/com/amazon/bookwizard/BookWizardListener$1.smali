.class Lcom/amazon/bookwizard/BookWizardListener$1;
.super Ljava/lang/Object;
.source "BookWizardListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/BookWizardListener;->onLibraryEvent(Lcom/amazon/kindle/krx/events/LibraryEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/BookWizardListener;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/BookWizardListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardListener$1;->this$0:Lcom/amazon/bookwizard/BookWizardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardListener$1;->this$0:Lcom/amazon/bookwizard/BookWizardListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/BookWizardBaseListener;->tryToLaunchBookWizard(Z)Z

    return-void
.end method
