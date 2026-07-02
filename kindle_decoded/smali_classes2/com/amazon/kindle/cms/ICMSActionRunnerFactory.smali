.class public interface abstract Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;
.super Ljava/lang/Object;
.source "ICMSActionRunnerFactory.java"


# virtual methods
.method public abstract createRunner(Landroid/content/Context;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/util/Collection;Ljava/util/Collection;)Lcom/amazon/kindle/cms/ICMSActionRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/amazon/kindle/cms/ICMSActionRunner;"
        }
    .end annotation
.end method

.method public abstract createRunner(Landroid/content/Context;Ljava/lang/String;JLcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;)Lcom/amazon/kindle/cms/ICMSActionRunner;
.end method
