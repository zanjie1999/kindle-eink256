.class public final enum Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;
.super Ljava/lang/Enum;
.source "AnnotationDatabaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

.field public static final enum ADD:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

.field public static final enum DELETE:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

.field public static final enum MODIFY:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "MODIFY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->MODIFY:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    .line 26
    new-instance v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "ADD"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->ADD:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    .line 27
    new-instance v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    const/4 v3, 0x2

    const-string v4, "DELETE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->DELETE:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    .line 24
    sget-object v5, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->MODIFY:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->ADD:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->$VALUES:[Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->$VALUES:[Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    return-object v0
.end method
