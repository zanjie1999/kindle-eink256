.class Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$1;
.super Ljava/lang/Object;
.source "ResourceSetDetailsListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;->populateResourceSetsArray()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/appexpan/client/model/ResourceSetModel;Lcom/amazon/appexpan/client/model/ResourceSetModel;)I
    .locals 0

    .line 212
    invoke-virtual {p2}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 208
    check-cast p1, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    check-cast p2, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter$1;->compare(Lcom/amazon/appexpan/client/model/ResourceSetModel;Lcom/amazon/appexpan/client/model/ResourceSetModel;)I

    move-result p1

    return p1
.end method
