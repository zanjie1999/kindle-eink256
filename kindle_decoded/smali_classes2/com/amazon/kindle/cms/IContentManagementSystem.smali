.class public interface abstract Lcom/amazon/kindle/cms/IContentManagementSystem;
.super Ljava/lang/Object;
.source "IContentManagementSystem.java"


# static fields
.field public static final SOURCE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazon.kindle"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract addGoodreadsRedirectVerb()V
.end method

.method public abstract addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZZ)V
.end method

.method public abstract addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;ZZ)V
.end method

.method public abstract addOrUpdateMultipleItems(Ljava/util/Collection;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract addStoreRedirectVerbsToCms()V
.end method

.method public abstract readDbAndFlushToCms()V
.end method

.method public abstract removeItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeItemFromCarousel(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeMultipleItems(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
