.class public final Lcom/amazon/android/widget/SearchViewWrapper$Availability;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/SearchViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Availability"
.end annotation


# static fields
.field private static ALREADY_CHECKED:Z = false

.field private static CACHED_AVAILABILITY:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isAvailable()Z
    .locals 5

    .line 26
    sget-boolean v0, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->ALREADY_CHECKED:Z

    if-eqz v0, :cond_0

    .line 27
    sget-boolean v0, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->CACHED_AVAILABILITY:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 30
    sput-boolean v0, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->ALREADY_CHECKED:Z

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.SearchableInfo"

    .line 33
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "android.widget.SearchView"

    .line 36
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "android.widget.SearchView$OnQueryTextListener"

    .line 37
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "android.widget.SearchView$OnCloseListener"

    .line 38
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    const-class v2, Landroid/widget/SearchView;

    const-string v3, "isLayoutRequested"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    const-class v2, Landroid/view/MenuItem;

    const-string v3, "getActionView"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    sput-boolean v0, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->CACHED_AVAILABILITY:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 50
    :catch_0
    sput-boolean v1, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->CACHED_AVAILABILITY:Z

    return v1
.end method
