.class public interface abstract Lcom/amazon/notebook/module/metrics/NotebookActionMetric;
.super Ljava/lang/Object;
.source "NotebookActionMetric.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;,
        Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;,
        Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Export;,
        Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Goto;,
        Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;,
        Lcom/amazon/notebook/module/metrics/NotebookActionMetric$DefaultImpls;,
        Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;->$$INSTANCE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Companion;

    return-void
.end method


# virtual methods
.method public abstract emit()Lkotlin/Unit;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
