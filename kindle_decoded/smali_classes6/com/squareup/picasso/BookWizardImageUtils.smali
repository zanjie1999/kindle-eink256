.class public Lcom/squareup/picasso/BookWizardImageUtils;
.super Ljava/lang/Object;
.source "BookWizardImageUtils.java"


# direct methods
.method public static clearCache(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p0

    iget-object p0, p0, Lcom/squareup/picasso/Picasso;->cache:Lcom/squareup/picasso/Cache;

    invoke-interface {p0}, Lcom/squareup/picasso/Cache;->clear()V

    return-void
.end method
