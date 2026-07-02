.class public Lcom/amazon/kindle/annotation/AnnotationModule;
.super Ljava/lang/Object;
.source "AnnotationModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependentModules()Ljava/util/Collection;
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

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "annotations"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;

    invoke-direct {v0}, Lcom/amazon/kindle/annotation/ui/HighlightRenderer;-><init>()V

    invoke-static {v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->register(Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;)V

    .line 20
    new-instance v0, Lcom/amazon/kindle/annotation/ui/GraphicalHighlightRenderer;

    invoke-direct {v0}, Lcom/amazon/kindle/annotation/ui/GraphicalHighlightRenderer;-><init>()V

    invoke-static {v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->register(Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;)V

    .line 21
    new-instance v0, Lcom/amazon/kindle/annotation/ui/NotesRenderer;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/annotation/ui/NotesRenderer;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->register(Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;)V

    .line 22
    new-instance v0, Lcom/amazon/kindle/annotation/ui/BookmarkRenderer;

    invoke-direct {v0}, Lcom/amazon/kindle/annotation/ui/BookmarkRenderer;-><init>()V

    invoke-static {v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->register(Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;)V

    .line 23
    new-instance v0, Lcom/amazon/kindle/annotation/ui/SearchResultRenderer;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/annotation/ui/SearchResultRenderer;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->register(Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;)V

    return-void
.end method
