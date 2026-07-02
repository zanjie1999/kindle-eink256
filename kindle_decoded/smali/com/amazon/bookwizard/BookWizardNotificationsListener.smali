.class public Lcom/amazon/bookwizard/BookWizardNotificationsListener;
.super Lcom/amazon/bookwizard/BookWizardBaseListener;
.source "BookWizardNotificationsListener.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/BookWizardBaseListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method


# virtual methods
.method public onStartupEvent()Z
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/BookWizardBaseListener;->tryToLaunchBookWizard(Z)Z

    move-result v0

    return v0
.end method
