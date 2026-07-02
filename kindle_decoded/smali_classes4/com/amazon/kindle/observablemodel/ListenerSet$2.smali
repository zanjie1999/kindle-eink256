.class Lcom/amazon/kindle/observablemodel/ListenerSet$2;
.super Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/observablemodel/ListenerSet;->processValueListeners(Ljava/util/Map;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator<",
        "TID;TVA",
        "LUE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/observablemodel/ListenerSet;

.field final synthetic val$keyToValue:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/observablemodel/ListenerSet;Ljava/util/Map;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ListenerSet$2;->this$0:Lcom/amazon/kindle/observablemodel/ListenerSet;

    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/ListenerSet$2;->val$keyToValue:Ljava/util/Map;

    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentValueForKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)TVA",
            "LUE;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ListenerSet$2;->val$keyToValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
