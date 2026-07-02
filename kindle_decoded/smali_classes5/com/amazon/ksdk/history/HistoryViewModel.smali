.class public abstract Lcom/amazon/ksdk/history/HistoryViewModel;
.super Ljava/lang/Object;
.source "HistoryViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/history/HistoryViewModel$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()Lcom/amazon/ksdk/history/HistoryViewModel;
    .locals 1

    .line 17
    invoke-static {}, Lcom/amazon/ksdk/history/HistoryViewModel$CppProxy;->createInstance()Lcom/amazon/ksdk/history/HistoryViewModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getEvents()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/history/HistoryEventDisplayItem;",
            ">;"
        }
    .end annotation
.end method
