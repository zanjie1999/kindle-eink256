.class public abstract enum Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
.super Ljava/lang/Enum;
.source "Vfs.java"

# interfaces
.implements Lorg/reflections/vfs/Vfs$UrlType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "DefaultUrlTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/reflections/vfs/Vfs$DefaultUrlTypes;",
        ">;",
        "Lorg/reflections/vfs/Vfs$UrlType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum bundle:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum directory:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarFile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarInputStream:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jarUrl:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jboss_vfs:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

.field public static final enum jboss_vfsfile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 209
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$1;

    const/4 v1, 0x0

    const-string v2, "jarFile"

    invoke-direct {v0, v2, v1}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarFile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 219
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$2;

    const/4 v2, 0x1

    const-string v3, "jarUrl"

    invoke-direct {v0, v3, v2}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarUrl:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 240
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$3;

    const/4 v3, 0x2

    const-string v4, "directory"

    invoke-direct {v0, v4, v3}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->directory:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 253
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$4;

    const/4 v4, 0x3

    const-string v5, "jboss_vfs"

    invoke-direct {v0, v5, v4}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfs:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 263
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$5;

    const/4 v5, 0x4

    const-string v6, "jboss_vfsfile"

    invoke-direct {v0, v6, v5}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfsfile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 273
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$6;

    const/4 v6, 0x5

    const-string v7, "bundle"

    invoke-direct {v0, v7, v6}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->bundle:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 284
    new-instance v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$7;

    const/4 v7, 0x6

    const-string v8, "jarInputStream"

    invoke-direct {v0, v8, v7}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarInputStream:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    const/4 v8, 0x7

    new-array v8, v8, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    .line 208
    sget-object v9, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarFile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v9, v8, v1

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jarUrl:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v8, v2

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->directory:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v8, v3

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfs:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v8, v4

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->jboss_vfsfile:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v8, v5

    sget-object v1, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->bundle:Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->$VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/reflections/vfs/Vfs$1;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2}, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
    .locals 1

    .line 208
    const-class v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-object p0
.end method

.method public static values()[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;
    .locals 1

    .line 208
    sget-object v0, Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->$VALUES:[Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    invoke-virtual {v0}, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/reflections/vfs/Vfs$DefaultUrlTypes;

    return-object v0
.end method
