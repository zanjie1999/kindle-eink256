.class public abstract Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;
.super Ljava/lang/Object;
.source "SavedTouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;
    }
.end annotation


# instance fields
.field protected type:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;->type:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    return-object v0
.end method
