import { DataTypes } from 'sequelize';
import { Column, Model, Table } from 'sequelize-typescript';

interface userAttrs {
  id: string;
  firstName: string;
  lastName: string;
  health_card_id: string;
  username: string;
  password: string;
  phoneNumber: number;
}

@Table({ tableName: 'users' })
export class User extends Model<User, userAttrs> {
  @Column({
    primaryKey: true,
    type: DataTypes.INTEGER,
    autoIncrement: true,
  })
  id: number;

  @Column({
    type: DataTypes.STRING(120),
  })
  firsName: string;

  @Column({
    type: DataTypes.STRING(120),
  })
  picture: string;

  @Column({
    type: DataTypes.STRING(120),
  })
  email: string;

  @Column({
    type: DataTypes.STRING(120),
  })
  lastName: string;

  @Column({
    type: DataTypes.INTEGER,
  })
  phoneNumber: number;

  @Column({
    type: DataTypes.STRING(120),
    unique: true,
  })
  username: string;

  @Column({
    type: DataTypes.STRING(120),

    unique: true,
  })
  health_card_id: string;

  @Column({
    type: DataTypes.STRING(120),
  })
  password: string;
}
