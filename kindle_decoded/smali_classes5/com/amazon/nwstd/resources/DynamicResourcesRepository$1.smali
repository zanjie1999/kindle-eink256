.class Lcom/amazon/nwstd/resources/DynamicResourcesRepository$1;
.super Ljava/lang/Object;
.source "DynamicResourcesRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/resources/DynamicResourcesRepository;->broadcastResourceAddedOnUIThread(Lcom/amazon/nwstd/resources/DynamicResource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listenersArray:[Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

.field final synthetic val$resource:Lcom/amazon/nwstd/resources/DynamicResource;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/resources/DynamicResourcesRepository;[Lcom/amazon/nwstd/resources/IDynamicResourcesListener;Lcom/amazon/nwstd/resources/DynamicResource;)V
    .locals 0

    .line 186
    iput-object p2, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository$1;->val$listenersArray:[Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    iput-object p3, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository$1;->val$resource:Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository$1;->val$listenersArray:[Lcom/amazon/nwstd/resources/IDynamicResourcesListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 190
    iget-object v4, p0, Lcom/amazon/nwstd/resources/DynamicResourcesRepository$1;->val$resource:Lcom/amazon/nwstd/resources/DynamicResource;

    invoke-interface {v3, v4}, Lcom/amazon/nwstd/resources/IDynamicResourcesListener;->onResourceAdd(Lcom/amazon/nwstd/resources/DynamicResource;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
