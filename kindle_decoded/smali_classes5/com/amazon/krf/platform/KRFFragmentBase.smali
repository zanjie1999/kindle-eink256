.class public abstract Lcom/amazon/krf/platform/KRFFragmentBase;
.super Landroid/app/Fragment;
.source "KRFFragmentBase.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;
.implements Lcom/amazon/krf/platform/Navigable;
.implements Lcom/amazon/krf/platform/PageElementProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
.end method

.method public abstract clearSelection()Z
.end method

.method public abstract getHeight()I
.end method

.method public abstract getHistoryManager()Lcom/amazon/krf/platform/HistoryManager;
.end method

.method public abstract getPositionRange()Lcom/amazon/krf/platform/PositionRange;
.end method

.method public abstract getWidth()I
.end method

.method public abstract setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;)Z
.end method

.method public abstract setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)Z
.end method

.method public abstract setContentDecorationEventListener(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V
.end method

.method public abstract setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V
.end method

.method public abstract setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V
.end method

.method public abstract setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V
.end method

.method public abstract setSelectionRanges(Lcom/amazon/krf/platform/PositionRange;)Z
.end method

.method public abstract setSettings(Lcom/amazon/krf/platform/ViewSettings;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation
.end method
