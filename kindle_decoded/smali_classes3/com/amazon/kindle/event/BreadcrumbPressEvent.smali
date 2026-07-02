.class public final Lcom/amazon/kindle/event/BreadcrumbPressEvent;
.super Ljava/lang/Object;
.source "BreadcrumbPressEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/BreadcrumbPressEvent$EventType;
    }
.end annotation


# instance fields
.field private final type:Lcom/amazon/kindle/event/BreadcrumbPressEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/event/BreadcrumbPressEvent$EventType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/event/BreadcrumbPressEvent;->type:Lcom/amazon/kindle/event/BreadcrumbPressEvent$EventType;

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
