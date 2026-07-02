.class public Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;
.super Ljava/lang/Object;
.source "BreadcrumbInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;
    }
.end annotation


# instance fields
.field public final direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

.field public final isMrpr:Z

.field public final position:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    .line 37
    iput-boolean p3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    return-void
.end method

.method public static areEqual(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    iget-boolean v3, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    if-ne v2, v3, :cond_2

    invoke-static {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areSameDirection(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->areSamePosition(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static areSameDirection(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    iget-object p1, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static areSamePosition(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object p1, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
