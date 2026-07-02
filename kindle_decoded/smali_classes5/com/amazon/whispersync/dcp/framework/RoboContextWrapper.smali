.class public Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;
.super Landroid/content/ContextWrapper;
.source "RoboContextWrapper.java"

# interfaces
.implements Lcom/amazon/whispersync/roboguice/util/RoboContext;


# instance fields
.field private final mScopedObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;->mScopedObjectMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getScopedObjectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;->mScopedObjectMap:Ljava/util/Map;

    return-object v0
.end method
