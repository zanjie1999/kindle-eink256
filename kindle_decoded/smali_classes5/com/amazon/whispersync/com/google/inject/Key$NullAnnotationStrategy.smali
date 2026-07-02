.class final enum Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;
.super Ljava/lang/Enum;
.source "Key.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NullAnnotationStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;",
        ">;",
        "Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

.field public static final enum INSTANCE:Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 372
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    aput-object v0, v2, v1

    .line 371
    sput-object v2, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;
    .locals 1

    .line 371
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;
    .locals 1

    .line 371
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    return-object v0
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[none]"

    return-object v0
.end method

.method public withoutAttributes()Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Key already has no attributes."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
