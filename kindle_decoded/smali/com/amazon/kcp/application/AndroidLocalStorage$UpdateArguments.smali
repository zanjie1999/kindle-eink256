.class Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;
.super Ljava/lang/Object;
.source "AndroidLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateArguments"
.end annotation


# instance fields
.field public final contentValues:Landroid/content/ContentValues;

.field public final table:Ljava/lang/String;

.field public final whereArgs:[Ljava/lang/String;

.field public final whereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;->table:Ljava/lang/String;

    .line 300
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;->contentValues:Landroid/content/ContentValues;

    .line 301
    iput-object p3, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;->whereClause:Ljava/lang/String;

    .line 302
    iput-object p4, p0, Lcom/amazon/kcp/application/AndroidLocalStorage$UpdateArguments;->whereArgs:[Ljava/lang/String;

    return-void
.end method
