.class public Lcom/amazon/whispersync/roboguice/inject/StringResourceFactory;
.super Ljava/lang/Object;
.source "StringResourceFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/roboguice/inject/ResourceFactory;


# annotations
.annotation runtime Lcom/amazon/whispersync/com/google/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/roboguice/inject/ResourceFactory<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/StringResourceFactory;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/roboguice/inject/StringResourceFactory;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/StringResourceFactory;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
