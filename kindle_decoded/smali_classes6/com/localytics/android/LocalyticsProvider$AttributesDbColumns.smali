.class public final Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;
.super Ljava/lang/Object;
.source "LocalyticsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributesDbColumns"
.end annotation


# static fields
.field static final ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

.field static final ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "com.localytics.android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "custom_dimension_0"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "%s:%s"

    .line 996
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "custom_dimension_1"

    aput-object v6, v1, v5

    .line 1001
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "custom_dimension_2"

    aput-object v6, v1, v5

    .line 1006
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "custom_dimension_3"

    aput-object v6, v1, v5

    .line 1011
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "custom_dimension_4"

    aput-object v6, v1, v5

    .line 1016
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_5:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "custom_dimension_5"

    aput-object v6, v1, v5

    .line 1021
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_6:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "custom_dimension_6"

    aput-object v6, v1, v5

    .line 1026
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_7:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "custom_dimension_7"

    aput-object v6, v1, v5

    .line 1031
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_8:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v6, "custom_dimension_8"

    aput-object v6, v1, v5

    .line 1036
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_9:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v1, "custom_dimension_9"

    aput-object v1, v0, v5

    .line 1041
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_10:Ljava/lang/String;

    return-void
.end method
